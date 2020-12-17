.class final Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;
.super Landroid/os/Handler;
.source "FlymeFlashLampEffectsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlymeFlashLampEffectsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;Landroid/os/Looper;)V
    .registers 4

    .line 68
    iput-object p1, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlymeFlashLampEffectsAdapter mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeFlashLampEffectsAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_50

    const/4 v0, 0x2

    if-eq p1, v0, :cond_49

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eq p1, v2, :cond_43

    if-eq p1, v1, :cond_3d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_36

    const/16 v0, 0x20

    if-eq p1, v0, :cond_30

    goto :goto_55

    .line 86
    :cond_30
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    invoke-static {p0, v2}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V

    goto :goto_55

    .line 83
    :cond_36
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    const/4 p1, 0x7

    invoke-static {p0, p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V

    goto :goto_55

    .line 80
    :cond_3d
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    invoke-static {p0, v0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V

    goto :goto_55

    .line 89
    :cond_43
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    invoke-static {p0, v1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V

    goto :goto_55

    .line 77
    :cond_49
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$000(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;I)V

    goto :goto_55

    .line 92
    :cond_50
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter$FlymeFlashLampEffectsHandler;->this$0:Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;

    invoke-static {p0}, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;->access$100(Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsAdapter;)V

    :goto_55
    return-void
.end method
