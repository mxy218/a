.class Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V
    .registers 2

    .line 1142
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1147
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V

    .line 1150
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1151
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;->this$2:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1153
    :cond_32
    return-void
.end method
