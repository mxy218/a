.class Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_ALPHAME_BOOT_BROADCAST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "GameModeControllerImpl"

    const-string p2, "mAlphaMeBootReceiver: onReceive: ACTION_ALPHAME_BOOT_BROADCAST"

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->access$000(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)V

    :cond_18
    return-void
.end method
