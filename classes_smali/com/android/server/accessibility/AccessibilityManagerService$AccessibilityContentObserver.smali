.class final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field private final mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

.field private final mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

.field private final mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

.field private final mAutoclickEnabledUri:Landroid/net/Uri;

.field private final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field private final mHighTextContrastUri:Landroid/net/Uri;

.field private final mNavBarMagnificationEnabledUri:Landroid/net/Uri;

.field private final mShowImeWithHardKeyboardUri:Landroid/net/Uri;

.field private final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field private final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field private final mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

.field private final mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 4320
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4321
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4281
    const-string/jumbo p1, "touch_exploration_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 4284
    const-string p1, "accessibility_display_magnification_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    .line 4287
    const-string p1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNavBarMagnificationEnabledUri:Landroid/net/Uri;

    .line 4290
    const-string p1, "accessibility_autoclick_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    .line 4293
    const-string p1, "enabled_accessibility_services"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 4296
    nop

    .line 4297
    const-string/jumbo p1, "touch_exploration_granted_accessibility_services"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 4299
    const-string p1, "high_text_contrast_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    .line 4302
    const-string p1, "accessibility_soft_keyboard_mode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    .line 4305
    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 4308
    const-string p1, "accessibility_shortcut_target_service"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    .line 4311
    const-string p1, "accessibility_button_target_component"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    .line 4314
    const-string p1, "accessibility_non_interactive_ui_timeout_ms"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 4317
    const-string p1, "accessibility_interactive_ui_timeout_ms"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 4322
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 4356
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4359
    :try_start_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 4361
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4362
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4363
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_f5

    .line 4365
    :cond_24
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNavBarMagnificationEnabledUri:Landroid/net/Uri;

    .line 4366
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_e8

    .line 4370
    :cond_36
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 4371
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4372
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_f5

    .line 4374
    :cond_4d
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4375
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4376
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_f5

    .line 4378
    :cond_64
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 4379
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4380
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_f5

    .line 4382
    :cond_7b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 4383
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4384
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_f5

    .line 4386
    :cond_91
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 4387
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    goto :goto_e4

    .line 4389
    :cond_a2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 4390
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4391
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_f5

    .line 4393
    :cond_b8
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 4394
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4395
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_f5

    .line 4397
    :cond_ce
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 4398
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4399
    :cond_de
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    goto :goto_f5

    .line 4388
    :cond_e4
    :goto_e4
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->reconcileSoftKeyboardModeWithSettingsLocked()V

    goto :goto_f5

    .line 4367
    :cond_e8
    :goto_e8
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 4368
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 4401
    :cond_f5
    :goto_f5
    monitor-exit p1

    .line 4402
    return-void

    .line 4401
    :catchall_f7
    move-exception p2

    monitor-exit p1
    :try_end_f9
    .catchall {:try_start_7 .. :try_end_f9} :catchall_f7

    throw p2
.end method

.method public register(Landroid/content/ContentResolver;)V
    .registers 5

    .line 4325
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4327
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4329
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNavBarMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4331
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4333
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4335
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4338
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4340
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4342
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4344
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4346
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4348
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4350
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4352
    return-void
.end method
