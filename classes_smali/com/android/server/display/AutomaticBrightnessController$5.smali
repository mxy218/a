.class Lcom/android/server/display/AutomaticBrightnessController$5;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1611
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1614
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "LightSensor P-Sensor changed proximity negative ."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1902(Lcom/android/server/display/AutomaticBrightnessController;I)I

    .line 1616
    return-void
.end method
