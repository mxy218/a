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

    .line 6826
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/audio/AudioService;
    .param p2, "x1"  # Lcom/android/server/audio/AudioService$1;

    .line 6826
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "userId"  # I
    .param p2, "newRestrictions"  # Landroid/os/Bundle;
    .param p3, "prevRestrictions"  # Landroid/os/Bundle;

    .line 6833
    nop

    .line 6834
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 6835
    .local v1, "wasRestricted":Z
    nop

    .line 6836
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6837
    .local v0, "isRestricted":Z
    if-eq v1, v0, :cond_14

    .line 6838
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v0, p1}, Lcom/android/server/audio/AudioService;->access$9200(Lcom/android/server/audio/AudioService;ZI)V

    .line 6844
    .end local v0  # "isRestricted":Z
    .end local v1  # "wasRestricted":Z
    :cond_14
    nop

    .line 6845
    const-string/jumbo v0, "no_adjust_volume"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "disallow_unmute_device"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2b

    .line 6846
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    move v1, v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v1, v3

    .line 6847
    .restart local v1  # "wasRestricted":Z
    :goto_2c
    nop

    .line 6848
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 6849
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move v3, v4

    goto :goto_3d

    :cond_3c
    :goto_3c
    nop

    :goto_3d
    move v0, v3

    .line 6850
    .restart local v0  # "isRestricted":Z
    if-eq v1, v0, :cond_45

    .line 6851
    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2, v0, v4, p1}, Lcom/android/server/audio/AudioService;->access$9300(Lcom/android/server/audio/AudioService;ZII)V

    .line 6854
    .end local v0  # "isRestricted":Z
    .end local v1  # "wasRestricted":Z
    :cond_45
    return-void
.end method
