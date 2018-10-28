#line 1 "Tweak.xm"
#import <AudioToolbox/AudioServices.h>



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBDashBoardQuickActionsView; 
static void (*_logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST, SEL, id); 

#line 4 "Tweak.xm"


static void _logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
  SystemSoundID sounds[10];
  NSString *soundPath = [[NSBundle bundleWithPath:@"/System/Library/Audio/UISounds"] pathForResource:@"Tink" ofType:@"caf"];
  CFURLRef soundURL = (__bridge CFURLRef)[NSURL fileURLWithPath:soundPath];
  AudioServicesCreateSystemSoundID(soundURL, &sounds[0]);
  AudioServicesPlaySystemSound(sounds[0]);
  _logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$(self, _cmd, arg1);
}
static void _logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$(_LOGOS_SELF_TYPE_NORMAL SBDashBoardQuickActionsView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){
  SystemSoundID sounds[10];
  NSString *soundPath = [[NSBundle bundleWithPath:@"/System/Library/Audio/UISounds"] pathForResource:@"Tink" ofType:@"caf"];
  CFURLRef soundURL = (__bridge CFURLRef)[NSURL fileURLWithPath:soundPath];
  AudioServicesCreateSystemSoundID(soundURL, &sounds[0]);
  AudioServicesPlaySystemSound(sounds[0]);
  _logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardQuickActionsView = objc_getClass("SBDashBoardQuickActionsView"); MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardQuickActionsView, @selector(handleButtonTouchEnded:), (IMP)&_logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchEnded$);MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardQuickActionsView, @selector(handleButtonTouchBegan:), (IMP)&_logos_method$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardQuickActionsView$handleButtonTouchBegan$);} }
#line 23 "Tweak.xm"
