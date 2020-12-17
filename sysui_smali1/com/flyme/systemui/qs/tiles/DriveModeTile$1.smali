.class Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;
.super Ljava/lang/Object;
.source "DriveModeTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/DriveModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/DriveModeTile;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/DriveModeTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/DriveModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
