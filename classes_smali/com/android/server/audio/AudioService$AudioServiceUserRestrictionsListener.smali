.class Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceUserRestrictionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 5843
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3

    .line 5843
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9

    .line 5850
    nop

    .line 5851
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 5852
    nop

    .line 5853
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 5854
    if-eq v1, v0, :cond_14

    .line 5855
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1, v0, p1}, Lcom/android/server/audio/AudioService;->access$8300(Lcom/android/server/audio/AudioService;ZI)V

    .line 5861
    :cond_14
    nop

    .line 5862
    const-string/jumbo v0, "no_adjust_volume"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "disallow_unmute_device"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2b

    .line 5863
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_29

    goto :goto_2b

    :cond_29
    move p3, v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    move p3, v3

    .line 5864
    :goto_2c
    nop

    .line 5865
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 5866
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    goto :goto_3c

    :cond_3a
    move v3, v4

    goto :goto_3d

    :cond_3c
    :goto_3c
    nop

    .line 5867
    :goto_3d
    if-eq p3, v3, :cond_44

    .line 5868
    iget-object p2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, v3, v4, p1}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;ZII)V

    .line 5871
    :cond_44
    return-void
.end method
