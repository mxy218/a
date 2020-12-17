.class Lcom/flyme/systemui/qs/tiles/NightModeTile$1;
.super Ljava/lang/Object;
.source "NightModeTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/NightModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/NightModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/NightModeTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/NightModeTile;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/NightModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNightModeChanged(Z)V
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/NightModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/NightModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
