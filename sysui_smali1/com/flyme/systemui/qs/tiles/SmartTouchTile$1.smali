.class Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;
.super Ljava/lang/Object;
.source "SmartTouchTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/SmartTouchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmartTouchChanged(Z)V
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/SmartTouchTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/SmartTouchTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/SmartTouchTile;->access$000(Lcom/flyme/systemui/qs/tiles/SmartTouchTile;Ljava/lang/Object;)V

    return-void
.end method
