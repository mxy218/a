.class Lcom/flyme/systemui/qs/tiles/VibrateTile$1;
.super Ljava/lang/Object;
.source "VibrateTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/VibrateTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/VibrateTile;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .registers 2

    return-void
.end method

.method public onSettingsChanged(ZZ)V
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->access$100(Lcom/flyme/systemui/qs/tiles/VibrateTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onVibrateOnChanged(Z)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VibrateTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VibrateTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/VibrateTile;->access$000(Lcom/flyme/systemui/qs/tiles/VibrateTile;Ljava/lang/Object;)V

    return-void
.end method
