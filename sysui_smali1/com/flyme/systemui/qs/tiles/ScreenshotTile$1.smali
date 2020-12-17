.class Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;
.super Ljava/lang/Object;
.source "ScreenshotTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/ScreenshotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenshotStateChanged(Z)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/ScreenshotTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/ScreenshotTile;->access$000(Lcom/flyme/systemui/qs/tiles/ScreenshotTile;Ljava/lang/Object;)V

    return-void
.end method
