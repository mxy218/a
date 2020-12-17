.class Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;
.super Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Ljava/lang/String;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 60
    check-cast p2, [Ljava/lang/String;

    const-string p1, "GameModeControllerImpl"

    const-string v0, "mAlphaReceiver: onReceive: ACTION_SCENE_CHANGED"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_49

    .line 62
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_49

    const/4 v0, 0x0

    .line 63
    aget-object p2, p2, v0

    .line 64
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    const-string p2, "enter game mode"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$302(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z

    goto :goto_40

    :cond_36
    const-string p2, "exit game mode"

    .line 70
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$302(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z

    .line 73
    :goto_40
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$400(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V

    :cond_49
    return-void
.end method
