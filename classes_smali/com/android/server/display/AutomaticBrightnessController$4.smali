.class Lcom/android/server/display/AutomaticBrightnessController$4;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Lcom/android/server/policy/gamemode/GameModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 1598
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .registers 5
    .param p1, "gameMode"  # Z

    .line 1601
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eq v0, p1, :cond_25

    .line 1602
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1602(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1603
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1604
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1702(Lcom/android/server/display/AutomaticBrightnessController;F)F

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;ZZ)V

    .line 1608
    :cond_25
    return-void
.end method
