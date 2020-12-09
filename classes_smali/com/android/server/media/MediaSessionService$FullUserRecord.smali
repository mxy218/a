.class final Lcom/android/server/media/MediaSessionService$FullUserRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FullUserRecord"
.end annotation


# static fields
.field private static final COMPONENT_NAME_USER_ID_DELIM:Ljava/lang/String; = ","

.field public static final COMPONENT_TYPE_ACTIVITY:I = 0x2

.field public static final COMPONENT_TYPE_BROADCAST:I = 0x1

.field public static final COMPONENT_TYPE_INVALID:I = 0x0

.field public static final COMPONENT_TYPE_SERVICE:I = 0x3


# instance fields
.field private mCallback:Landroid/media/session/ICallback;

.field private final mFullUserId:I

.field private mInitialDownMusicOnly:Z

.field private mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

.field private mInitialDownVolumeStream:I

.field private mLastMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

.field private mOnMediaKeyListenerUid:I

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

.field private mOnVolumeKeyLongPressListenerUid:I

.field private final mPriorityStack:Lcom/android/server/media/MediaSessionStack;

.field private mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

.field private mRestoredMediaButtonReceiverComponentType:I

.field private mRestoredMediaButtonReceiverUserId:I

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;I)V
    .registers 5

    .line 766
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    .line 768
    new-instance p2, Lcom/android/server/media/MediaSessionStack;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/android/server/media/MediaSessionStack;-><init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    .line 770
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string v0, "media_button_receiver"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 772
    if-nez p1, :cond_21

    .line 773
    return-void

    .line 775
    :cond_21
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 776
    if-eqz p1, :cond_59

    array-length p2, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_32

    array-length p2, p1

    if-eq p2, v0, :cond_32

    goto :goto_59

    .line 779
    :cond_32
    const/4 p2, 0x0

    aget-object p2, p1, p2

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 780
    const/4 p2, 0x1

    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    .line 781
    array-length p2, p1

    if-ne p2, v0, :cond_50

    .line 782
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    goto :goto_58

    .line 784
    :cond_50
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 785
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getComponentType(Landroid/content/ComponentName;)I

    move-result p1

    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    .line 787
    :goto_58
    return-void

    .line 777
    :cond_59
    :goto_59
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .registers 1

    .line 742
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p0
.end method

.method static synthetic access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .registers 2

    .line 742
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p0
.end method

.method static synthetic access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .registers 2

    .line 742
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return p0
.end method

.method static synthetic access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I
    .registers 2

    .line 742
    iput p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownVolumeStream:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z
    .registers 1

    .line 742
    iget-boolean p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z
    .registers 2

    .line 742
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mInitialDownMusicOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    return p0
.end method

.method static synthetic access$4400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;
    .registers 1

    .line 742
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    return p0
.end method

.method static synthetic access$4900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I
    .registers 1

    .line 742
    iget p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverUserId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    return-object p1
.end method

.method private getComponentType(Landroid/content/ComponentName;)I
    .registers 4

    .line 902
    if-nez p1, :cond_4

    .line 903
    const/4 p1, 0x0

    return p1

    .line 905
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 907
    const v1, 0xc0001

    :try_start_11
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_15} :catch_1a

    .line 911
    if-eqz v1, :cond_19

    .line 912
    const/4 p1, 0x2

    return p1

    .line 915
    :cond_19
    goto :goto_1b

    .line 914
    :catch_1a
    move-exception v1

    .line 917
    :goto_1b
    const v1, 0xc0004

    :try_start_1e
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_22} :catch_27

    .line 921
    if-eqz p1, :cond_26

    .line 922
    const/4 p1, 0x3

    return p1

    .line 925
    :cond_26
    goto :goto_28

    .line 924
    :catch_27
    move-exception p1

    .line 927
    :goto_28
    const/4 p1, 0x1

    return p1
.end method

.method private getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    .line 897
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 898
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 897
    :goto_15
    return-object v0
.end method

.method private pushAddressedPlayerChangedLocked()V
    .registers 4

    .line 875
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    if-nez v0, :cond_5

    .line 876
    return-void

    .line 879
    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getMediaButtonSessionLocked()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_15

    .line 881
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    .line 882
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 881
    invoke-interface {v1, v0}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V

    goto :goto_4c

    .line 883
    :cond_15
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    if-eqz v0, :cond_35

    .line 884
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 885
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 886
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 884
    invoke-interface {v0, v1}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V

    goto :goto_4c

    .line 887
    :cond_35
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    if-eqz v0, :cond_4c

    .line 888
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 889
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 888
    invoke-interface {v0, v1}, Landroid/media/session/ICallback;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_4c} :catch_4d

    .line 893
    :cond_4c
    :goto_4c
    goto :goto_55

    .line 891
    :catch_4d
    move-exception v0

    .line 892
    const-string v1, "MediaSessionService"

    const-string v2, "Failed to pushAddressedPlayerChangedLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    :goto_55
    return-void
.end method


# virtual methods
.method public destroySessionsForUserLocked(I)V
    .registers 4

    .line 790
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object p1

    .line 791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 792
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionService;->access$800(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionRecord;)V

    .line 793
    goto :goto_b

    .line 794
    :cond_1d
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Record for full_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 800
    const/4 v1, 0x0

    move v2, v1

    :goto_25
    if-ge v2, v0, :cond_6c

    .line 801
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_69

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 802
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    if-ne v3, v4, :cond_69

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", profile_user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 806
    :cond_6c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListener:Landroid/media/session/IOnVolumeKeyLongPressListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Volume key long-press listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnVolumeKeyLongPressListenerUid:I

    .line 810
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListener:Landroid/media/session/IOnMediaKeyListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Media key listener package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    iget v4, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mOnMediaKeyListenerUid:I

    .line 813
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 812
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mCallback:Landroid/media/session/ICallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Last MediaButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Restored MediaButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Restored MediaButtonReceiverComponentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Session2Tokens:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    nop

    :goto_16e
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b8

    .line 822
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 823
    if-eqz v2, :cond_1b5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_18f

    .line 824
    goto :goto_1b5

    .line 826
    :cond_18f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_193
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Session2Token;

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    goto :goto_193

    .line 821
    :cond_1b5
    :goto_1b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    .line 830
    :cond_1b8
    return-void
.end method

.method public onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V
    .registers 5

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media button session is changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 839
    if-eqz p1, :cond_2f

    .line 840
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    goto :goto_2f

    .line 847
    :catchall_2d
    move-exception p1

    goto :goto_46

    .line 842
    :cond_2f
    :goto_2f
    if-eqz p2, :cond_41

    .line 843
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V

    .line 844
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(I)V

    .line 846
    :cond_41
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_2d

    throw p1
.end method

.method public rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6

    .line 852
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    .line 853
    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;

    .line 854
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiver:Landroid/content/ComponentName;

    .line 855
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mRestoredMediaButtonReceiverComponentType:I

    .line 857
    nop

    .line 858
    if-eqz v0, :cond_4d

    .line 859
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_4d

    .line 861
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 862
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->getComponentType(Landroid/content/ComponentName;)I

    move-result v0

    .line 864
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    .line 865
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    .line 866
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    .line 864
    const-string p1, ","

    invoke-static {p1, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4f

    .line 869
    :cond_4d
    const-string p1, ""

    :goto_4f
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$700(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->mFullUserId:I

    const-string v2, "media_button_receiver"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 872
    return-void
.end method
