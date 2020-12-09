.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .registers 4

    .line 960
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 961
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 962
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 964
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 p1, 0x2

    if-eq v0, p1, :cond_19

    const/4 p1, 0x3

    if-eq v0, p1, :cond_e

    goto :goto_4d

    .line 976
    :cond_e
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$1400(Lcom/android/server/display/BrightnessTracker;)V

    .line 977
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    .line 978
    goto :goto_4d

    .line 980
    :cond_19
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$1600(Lcom/android/server/display/BrightnessTracker;)V

    .line 981
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_4d

    .line 969
    :cond_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    .line 970
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    move v4, v1

    .line 971
    iget-object v2, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v3, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v6, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    invoke-static/range {v2 .. v9}, Lcom/android/server/display/BrightnessTracker;->access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJ)V

    .line 974
    goto :goto_4d

    .line 966
    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/BrightnessTracker;->access$1200(Lcom/android/server/display/BrightnessTracker;F)V

    .line 967
    nop

    .line 984
    :goto_4d
    return-void
.end method
