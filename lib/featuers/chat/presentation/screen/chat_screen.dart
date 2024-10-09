import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:path_provider/path_provider.dart';
import 'package:senior_code_app/core/extensions.dart';
import 'package:senior_code_app/core/utils/app_styels.dart';

import '../../../../exports.dart';

//! TODO: I will Refactor this screen for improved readability and performance in the coming days...

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //! Manages the input text for the chat.
  final TextEditingController _controller = TextEditingController();
  //! Controls the scrolling behavior of the chat
  final ScrollController _scrollController = ScrollController();
  //! A list that stores the messages sent in the chat.
  final List<Message> _messages = [];
  //! A boolean to track if recording is in progress.
  bool isRecording = false;
  //! A boolean to track if the audio recorder has been initialized.
  bool isRecorderInitialized = false;
  //! An instance of FlutterSoundRecorder for recording audio.
  FlutterSoundRecorder? _audioRecorder;
  //! An instance of FlutterSoundPlayer for playing audio.
  FlutterSoundPlayer? _audioPlayer;
  //! A string to store the path of the recorded audio file.
  String? _audioFilePath;

  @override
  void initState() {
    super.initState();
    _audioRecorder = FlutterSoundRecorder();
    _audioPlayer = FlutterSoundPlayer();
    //! This method is used to request microphone permissions.
    _initializeRecorder();
  }

////! Asynchronously requests microphone permissions. If granted, it opens the audio recorder and player. The isRecorderInitialized flag is updated to indicate readiness for recording.
  Future<void> _initializeRecorder() async {
    final status = await Permission.microphone.request();
    if (status != PermissionStatus.granted) {
      throw RecordingPermissionException('Microphone permission not granted');
    }
    await _audioRecorder!.openRecorder();
    await _audioPlayer!.openPlayer();
    setState(() {
      isRecorderInitialized = true;
    });
  }

////! Checks if the recorder is initialized; if not, it initializes it.
////! Gets the application's documents directory to store the recorded audio.
////! Constructs a unique file path for the audio using the current timestamp.
////! Starts recording audio to the specified file.
  Future<void> _startRecording() async {
    if (!isRecorderInitialized) {
      await _initializeRecorder();
    }

    final directory = await getApplicationDocumentsDirectory();
    _audioFilePath =
        '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.aac';
    await _audioRecorder!.startRecorder(
      toFile: _audioFilePath,
    );
  }

////! Stops the audio recording.
  Future<void> _stopRecording() async {
    await _audioRecorder?.stopRecorder();
  }

////! Validates that the message content is not empty.
////! Adds a new message to the _messages list at the top.
////! Clears the input field.
  void _sendMessage(String content, MessageType type) {
    if (content.trim().isEmpty) return;
    setState(() {
      _messages.insert(
        0,
        Message(
          content: content,
          type: type,
          isMe: true,
          timestamp: DateTime.now(),
        ),
      );
    });
    _controller.clear();
    //! Calls _scrollToBottom() to ensure the latest message is visible.
    _scrollToBottom();
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

////! Called when the send button is tapped. It sends the text entered in the input field as a message.
  void _handleSendTap() {
    _sendMessage(_controller.text, MessageType.text);
  }

////!  Sets isRecording to true and starts recording when the user long-presses the microphone button.
  void _handleLongPressStart() async {
    setState(() {
      isRecording = true;
    });
    await _startRecording();
  }

////! Stops the recording when the user releases the long press and sends the audio file as a message if it exists.
  void _handleLongPressEnd() async {
    await _stopRecording();
    if (_audioFilePath != null && File(_audioFilePath!).existsSync()) {
      setState(() {
        isRecording = false;
      });
      _sendMessage(_audioFilePath!, MessageType.voice);
    }
  }

////! Creates a widget that represents a single message. It adjusts the alignment and color based on whether the message is sent by the user or the other party. It displays different types of messages: text, images, or voice messages.
  Widget _buildMessage(Message message) {
    final isMe = message.isMe;
    final bgColor = isMe ? AppColors.secondPrimaryColor : AppColors.white;
    final textColor = isMe ? AppColors.white : AppColors.primaryColor;
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10.0.r),
        margin: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 8.0.w),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12.0.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (message.type == MessageType.text) ...[
              Text(
                message.content,
                style: TextStyle(color: textColor),
              ),
            ] else if (message.type == MessageType.image) ...[
              Image.asset(
                message.content,
                fit: BoxFit.cover,
              ),
            ] else if (message.type == MessageType.voice) ...[
              VoiceMessageWidget(audioFilePath: message.content),
            ],
            const SizedBox(height: 5.0),
            Text(
              message.timestamp.toIso8601String(),
              style: TextStyle(color: textColor.withOpacity(0.5), fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }

////! Displays a modal bottom sheet with options for sending different media types (file, image, audio). The user can select an option to handle accordingly.
  void _showMediaOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0.r),
          height: 120, //! Set height for the bottom sheet
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  //! Handle file selection
                  Navigator.pop(context); //! Close the bottom sheet
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.insert_drive_file, color: AppColors.black),
                    4.vs,
                    const Text("File",
                        style: TextStyle(color: AppColors.black)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  //! Handle media selection
                  Navigator.pop(context); //! Close the bottom sheet
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.image, color: AppColors.black),
                    4.vs,
                    const Text("Media",
                        style: TextStyle(color: AppColors.black)),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _audioRecorder?.closeRecorder();
    _audioPlayer?.closePlayer();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chat",
              style: AppStyles.getBoldStyle(
                fontSize: 16.0,
                color: AppColors.white,
              ),
            ),
            const Text(
              "Online",
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            //! Shows the list of messages, allowing scrolling. The reverse property is set to true, so the latest messages appear at the bottom.
            child: ListView.builder(
              controller: _scrollController,
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    _handleReply(message);
                  },
                  child: _buildMessage(message),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 6.0.h),
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.1),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _showMediaOptions, //! Show the bottom sheet
                  child: const Icon(Icons.add, color: Colors.white),
                ),
                8.hs,
                Expanded(
                  //!  Allows the user to input text or record audio. It disables input while recording.
                  child: TextField(
                    controller: _controller,
                    enabled: !isRecording,
                    style: const TextStyle(color: AppColors.white),
                    onChanged: (text) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      hintText:
                          isRecording ? 'Recording Voice...' : 'Type a message',
                      hintStyle: TextStyle(color: AppColors.favouriteWhite),
                      filled: true,
                      fillColor: AppColors.white.withOpacity(0.1),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide:
                            const BorderSide(color: AppColors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                        borderSide:
                            const BorderSide(color: AppColors.transparent),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:
                      _controller.text.trim().isEmpty ? null : _handleSendTap,
                  onLongPressStart: _controller.text.trim().isEmpty
                      ? (_) => _handleLongPressStart()
                      : null,
                  onLongPressEnd: _controller.text.trim().isEmpty
                      ? (_) => _handleLongPressEnd()
                      : null,
                  child: Icon(
                    _controller.text.trim().isEmpty ? Icons.mic : Icons.send,
                    color: _controller.text.trim().isEmpty
                        ? AppColors.grey
                        : AppColors.skyBlue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

////! The _handleReply method handles replies to messages, printing the message content to the console in debug mode.
  void _handleReply(Message message) {
    if (kDebugMode) {
      print('Replying to: ${message.content}');
    }
  }
}

class VoiceMessageWidget extends StatefulWidget {
  final String audioFilePath;

  const VoiceMessageWidget({super.key, required this.audioFilePath});

  @override
  _VoiceMessageWidgetState createState() => _VoiceMessageWidgetState();
}

class _VoiceMessageWidgetState extends State<VoiceMessageWidget>
    with SingleTickerProviderStateMixin {
  final FlutterSoundPlayer _audioPlayer = FlutterSoundPlayer();
  bool isPlaying = false;
  bool isInitialized = false;
  late AnimationController _animationController;
  Duration? _voiceMessageDuration;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }
  ////! Initializes the audio player and loads the duration of the voice message.

  Future<void> _initializePlayer() async {
    await _audioPlayer.openPlayer();
    await _loadVoiceMessageDuration(); //! Load voice message duration
    setState(() {
      isInitialized = true;
    });
  }

  Future<void> _loadVoiceMessageDuration() async {
//! Load the duration of the voice message
    final duration = await _audioPlayer.startPlayer(
      fromURI: widget.audioFilePath,
      codec: Codec.aacADTS,
    );
    _audioPlayer.stopPlayer(); //! Stop after fetching duration

    setState(() {
      _voiceMessageDuration = duration;
    });
  }
  //! Handles play and pause functionality, updating the UI accordingly.

  void _togglePlayPause() async {
    if (!isInitialized) return;

    if (isPlaying) {
      await _audioPlayer.stopPlayer();
      setState(() {
        isPlaying = false;
        _animationController.stop();
      });
    } else {
      await _audioPlayer.startPlayer(
        fromURI: widget.audioFilePath,
        whenFinished: () {
          setState(() {
            isPlaying = false;
            _animationController.stop();
          });
        },
      );
      setState(() {
        isPlaying = true;
        _animationController.repeat(); //! Start the waveform animation
      });
    }
  }

////! Formats and displays the duration of the voice message.
  String _formatDuration(Duration? duration) {
    if (duration == null) return '0:00';
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds.remainder(60);
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _audioPlayer.closePlayer();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _togglePlayPause,
      child: Row(
        children: [
          Icon(
            isPlaying ? Icons.pause : Icons.play_arrow,
            color: Colors.white,
          ),
          10.hs,
          Text(
            _formatDuration(_voiceMessageDuration), //! Display the duration
            style: const TextStyle(color: AppColors.white),
          ),
          10.hs,
          Expanded(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                //! Scale the animation value to slow down the visual change
                final adjustedAnimationValue =
                    (_animationController.value * 0.5) % 1.0;

                return ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: CustomPaint(
                    painter: WaveformPainter(
                      animationValue:
                          adjustedAnimationValue, //! Use adjusted animation value
                      isPlaying: isPlaying,
                    ),
                    child: SizedBox(
                      height: 21.h,
                      width: double.infinity.w,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

////! The WaveformPainter class is used to draw a waveform animation based on the audio being played.

class WaveformPainter extends CustomPainter {
  //! Used to animate the waveform based on the audio playback.
  final double animationValue;
  final bool isPlaying;

  WaveformPainter({required this.animationValue, required this.isPlaying});

  @override
  //! Generates random bar heights to simulate a waveform based on the current animation value.
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.w;

    double spaceBetweenBars = 4.0.w;

    //! Calculate number of bars
    int numberOfBars =
        (size.width / (spaceBetweenBars + paint.strokeWidth)).floor();

    //! Generate random bar heights to simulate a waveform
    final List<double> barHeights = List.generate(numberOfBars, (i) {
      return size.height *
          (0.3 + Random().nextDouble() * 0.7 * (1 - animationValue));
    });

    //! Draw bars
    for (int i = 0; i < barHeights.length; i++) {
      final double x = i * (spaceBetweenBars + paint.strokeWidth);
      final double y = (size.height - barHeights[i]) / 2;
      canvas.drawLine(Offset(x, y), Offset(x, y + barHeights[i]), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//! Message Types
enum MessageType {
  text,
  image,
  voice,
}

//! Message model
////! The Message class models a chat message with various properties, including content, type, sender, and timestamp.
class Message {
  final String content;
  final MessageType type;
  final bool isMe;
  final DateTime timestamp;

  Message({
    required this.content,
    required this.type,
    required this.isMe,
    required this.timestamp,
  });
}
