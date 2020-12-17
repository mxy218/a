.class public Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;
.super Ljava/lang/Object;
.source "RingerModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsMuteOn:Z

.field private mIsVibrateOn:Z

.field private mRingerMode:I

.field mRingerModeFilter:Landroid/content/IntentFilter;

.field private final mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateOnObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    .line 35
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    .line 47
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    .line 62
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RingerModeControllerImpl: init ringerMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RingerModeControllerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;)I
    .registers 1

    .line 21
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;I)I
    .registers 2

    .line 21
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    return p1
.end method

.method private notifyChanged()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    .line 122
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .registers 3

    .line 127
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isVibrateOn()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onVibrateOnChanged(Z)V

    .line 128
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    invoke-interface {p1, v0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onRingerModeChanged(I)V

    .line 129
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isMuteOn()Z

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->isVibrateOn()Z

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;->onSettingsChanged(ZZ)V

    return-void
.end method

.method private updateRingerModeInternal()V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 134
    iget-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    const/4 v2, 0x2

    const/4 v3, -0x2

    const-string/jumbo v4, "vibrate_when_ringing"

    if-eqz v1, :cond_29

    .line 135
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 137
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-eqz p0, :cond_25

    .line 138
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_3e

    .line 140
    :cond_25
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_3e

    .line 143
    :cond_29
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 145
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-eqz p0, :cond_3b

    .line 146
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_3e

    .line 148
    :cond_3b
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :goto_3e
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .registers 7

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 155
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 157
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    return-void
.end method

.method public isMuteOn()Z
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_25

    .line 98
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 101
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_21

    move v2, v1

    :cond_21
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 102
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    .line 104
    :cond_25
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    return p0
.end method

.method public isVibrateOn()Z
    .registers 5

    .line 78
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_25

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 82
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerMode:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_21

    move v2, v1

    :cond_21
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 83
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    .line 85
    :cond_25
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mVibrateOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsInitialized:Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V

    return-void
.end method

.method public setMuteOn(Z)V
    .registers 3

    .line 109
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 110
    :cond_5
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsMuteOn:Z

    .line 111
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->updateRingerModeInternal()V

    return-void
.end method

.method public setVibrateOn(Z)V
    .registers 3

    .line 90
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 91
    :cond_5
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->mIsVibrateOn:Z

    .line 92
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/RingerModeControllerImpl;->updateRingerModeInternal()V

    return-void
.end method
