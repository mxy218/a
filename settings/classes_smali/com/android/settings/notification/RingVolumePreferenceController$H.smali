.class final Lcom/android/settings/notification/RingVolumePreferenceController$H;
.super Landroid/os/Handler;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$1;)V
    .registers 3

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 155
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 160
    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$300(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    goto :goto_14

    .line 157
    :cond_f
    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController$H;->this$0:Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->access$200(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    :goto_14
    return-void
.end method
