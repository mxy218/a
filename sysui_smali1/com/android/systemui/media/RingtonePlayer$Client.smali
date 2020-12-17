.class Lcom/android/systemui/media/RingtonePlayer$Client;
.super Ljava/lang/Object;
.source "RingtonePlayer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/RingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mRingtone:Landroid/media/Ringtone;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/UserHandle;Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)V
    .registers 7

    .line 87
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 90
    new-instance p2, Landroid/media/Ringtone;

    invoke-static {p1, p4}, Lcom/android/systemui/media/RingtonePlayer;->access$000(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p1, p4}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 91
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p1, p5}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0, p3, p6}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/media/Ringtone;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/media/RingtonePlayer$Client;)Landroid/os/IBinder;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v0}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_7
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    invoke-static {v1}, Lcom/android/systemui/media/RingtonePlayer;->access$100(Lcom/android/systemui/media/RingtonePlayer;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    .line 101
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    return-void

    :catchall_19
    move-exception p0

    .line 100
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method
