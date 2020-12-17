.class Lcom/android/server/VibratorService$1;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Lcom/android/server/policy/gamemode/GameModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/VibratorService;

    .line 182
    iput-object p1, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .registers 4
    .param p1, "gameMode"  # Z

    .line 185
    iget-object v0, p0, Lcom/android/server/VibratorService$1;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 186
    .local v0, "vibrator":Landroid/os/Vibrator;
    const v1, 0x1869f

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect$Prebaked;

    .line 187
    .local v1, "effect":Landroid/os/VibrationEffect$Prebaked;
    invoke-virtual {v1, p1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 189
    return-void
.end method
