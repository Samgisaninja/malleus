#import <AudioToolbox/AudioServices.h>


%hook SBDashBoardQuickActionsView

-(void)handleButtonTouchEnded:(id)arg1{
  SystemSoundID sounds[10];
  NSString *soundPath = [[NSBundle bundleWithPath:@"/System/Library/Audio/UISounds"] pathForResource:@"Tink" ofType:@"caf"];
  CFURLRef soundURL = (__bridge CFURLRef)[NSURL fileURLWithPath:soundPath];
  AudioServicesCreateSystemSoundID(soundURL, &sounds[0]);
  AudioServicesPlaySystemSound(sounds[0]);
  %orig;
}
-(void)handleButtonTouchBegan:(id)arg1{
  SystemSoundID sounds[10];
  NSString *soundPath = [[NSBundle bundleWithPath:@"/System/Library/Audio/UISounds"] pathForResource:@"Tink" ofType:@"caf"];
  CFURLRef soundURL = (__bridge CFURLRef)[NSURL fileURLWithPath:soundPath];
  AudioServicesCreateSystemSoundID(soundURL, &sounds[0]);
  AudioServicesPlaySystemSound(sounds[0]);
  %orig;
}
%end
