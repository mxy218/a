.class Lcom/flyme/systemui/qs/tiles/VpnTile$1;
.super Ljava/lang/Object;
.source "VpnTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/VpnController$VpnControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/VpnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/VpnTile;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/VpnTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpnStateChanged(ZZZZ)V
    .registers 5

    .line 103
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/VpnTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/VpnTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
