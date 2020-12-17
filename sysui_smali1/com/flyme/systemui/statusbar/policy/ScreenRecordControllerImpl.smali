.class public Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;
.super Ljava/lang/Object;
.source "ScreenRecordControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenRecordController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final FEATURE_LITE_MODE:Z


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mReadying:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolutionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettings:Lcom/android/systemui/qs/SecureSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ro.config.simple_flyme"

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->FEATURE_LITE_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.flyme.systemuiex.screenshot.ACTION_START"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    .line 48
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    const-string v0, "com.flyme.systemuiex"

    const-string v1, "com.flyme.systemuiex.screenrecord.ScreenRecordService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mHandler:Landroid/os/Handler;

    const-string v2, "mz_screenrecord_on"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    .line 58
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 60
    new-instance p1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$2;

    invoke-direct {p1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->initResolutionList()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->sendStateBroadcast(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;)Lcom/android/systemui/qs/SecureSetting;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    return-object p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    return p1
.end method

.method private initResolutionList()V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    .line 78
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    const-string v2, "480P"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-boolean v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->FEATURE_LITE_MODE:Z

    if-nez v1, :cond_43

    .line 82
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x2d0

    if-lt v0, v2, :cond_36

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    const-string v2, "720P"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_36
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x438

    if-lt v0, v1, :cond_43

    .line 88
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    const-string v0, "1080P"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    .line 152
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .registers 2

    .line 157
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;->onScreenRecordChanged(Z)V

    return-void
.end method

.method private sendStateBroadcast(Z)V
    .registers 4

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FORCE_STATIC_BLUR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 165
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    return-void
.end method

.method public getResolution()Ljava/lang/String;
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 173
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "screen_record_resolution"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isReadying()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    return p0
.end method

.method public isScreenRecordSupported()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isScreenRecording()Z
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mSettings:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/ScreenRecordController$ScreenRecordControllerCallback;)V

    return-void
.end method

.method public running(Z)V
    .registers 4

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mReadying:Z

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mResolutionList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "resolution"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public takeScreenRecord(Z)V
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takeScreenRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenRecordController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl$3;-><init>(Lcom/flyme/systemui/statusbar/policy/ScreenRecordControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
