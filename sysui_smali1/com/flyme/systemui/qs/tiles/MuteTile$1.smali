.class Lcom/flyme/systemui/qs/tiles/MuteTile$1;
.super Ljava/lang/Object;
.source "MuteTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MuteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/MuteTile;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MuteTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;

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

    .line 124
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MuteTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/MuteTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/MuteTile;->access$000(Lcom/flyme/systemui/qs/tiles/MuteTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onVibrateOnChanged(Z)V
    .registers 2

    return-void
.end method
