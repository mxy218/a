.class Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;
.super Ljava/lang/Object;
.source "AcceleratorTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/AcceleratorTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/AcceleratorTile;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcceleratorChanged()V
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/AcceleratorTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/AcceleratorTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
