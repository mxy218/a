.class Lcom/android/systemui/volume/VolumePanel$SafetyWarning;
.super Landroid/app/AlertDialog;
.source "VolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SafetyWarning"
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mJustNotify:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumePanel:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;Z)V
    .registers 6

    const v0, 0xa110030

    .line 427
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 505
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning$1;-><init>(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    .line 429
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    .line 430
    iput-object p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    .line 431
    iput-boolean p4, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    const/4 p2, 0x0

    .line 433
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 434
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    const/4 p3, -0x1

    if-eqz p2, :cond_35

    .line 435
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$string;->ear_protection_long_time_warning:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$string;->ear_protection_got_it:I

    .line 437
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 436
    invoke-virtual {p0, p3, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_64

    .line 439
    :cond_35
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$string;->ear_protection_title:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/systemui/R$string;->ear_protection_message:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const p4, 0x1040013

    .line 442
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 441
    invoke-virtual {p0, p3, p2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    .line 443
    iget-object p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    const p4, 0x1040009

    .line 444
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 443
    invoke-virtual {p0, p2, p3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 447
    :goto_64
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 448
    iget-boolean p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    if-eqz p3, :cond_70

    const-string p3, "TimeExpire"

    goto :goto_72

    :cond_70
    const-string p3, "VolumeRaise"

    :goto_72
    const-string p4, "popup_type"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object p3, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object p3

    const/4 p4, 0x0

    const-string v0, "SafetyWarningPopup"

    invoke-virtual {p3, v0, p4, p2}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 451
    invoke-virtual {p0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 453
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)Z
    .registers 1

    .line 419
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumePanel$SafetyWarning;)V
    .registers 1

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

.method private cleanUp()V
    .registers 3

    .line 498
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 499
    :try_start_6
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 500
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_10

    .line 502
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mVolumePanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void

    :catchall_10
    move-exception p0

    .line 500
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p0
.end method


# virtual methods
.method public isJustNotify()Z
    .registers 1

    .line 463
    iget-boolean p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: mJustNotify = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; which = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VolumePanel"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mJustNotify:Z

    if-eqz p1, :cond_27

    const-string p1, "popup_ok"

    goto :goto_41

    :cond_27
    const/4 p1, -0x1

    if-ne p2, p1, :cond_39

    .line 479
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumePanel;->access$002(J)J

    const-string p1, "popup_increase"

    goto :goto_41

    :cond_39
    const/4 p1, -0x2

    if-ne p2, p1, :cond_3f

    const-string p1, "popup_cancel"

    goto :goto_41

    :cond_3f
    const-string p1, ""

    .line 486
    :goto_41
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "action_type"

    .line 487
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "SafetyWarningAction"

    invoke-virtual {p0, v0, p1, p2}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 493
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;->cleanUp()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 459
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 468
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
