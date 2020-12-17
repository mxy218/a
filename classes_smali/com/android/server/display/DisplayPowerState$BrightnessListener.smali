.class final Lcom/android/server/display/DisplayPowerState$BrightnessListener;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessListener"
.end annotation


# instance fields
.field callback:Landroid/os/IBrightnessChangedCallback;

.field key:Landroid/os/IBinder;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState;Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p2, "callback"  # Landroid/os/IBrightnessChangedCallback;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "key"  # Landroid/os/IBinder;

    .line 501
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput-object p3, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->tag:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->callback:Landroid/os/IBrightnessChangedCallback;

    .line 504
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->key:Landroid/os/IBinder;

    .line 505
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"  # Ljava/lang/Object;

    .line 513
    if-eqz p1, :cond_1e

    instance-of v0, p1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->tag:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->tag:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->key:Landroid/os/IBinder;

    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerState$BrightnessListener;->key:Landroid/os/IBinder;

    if-ne v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method
