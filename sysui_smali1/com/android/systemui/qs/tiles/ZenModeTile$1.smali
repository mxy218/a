.class Lcom/android/systemui/qs/tiles/ZenModeTile$1;
.super Ljava/lang/Object;
.source "ZenModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ZenModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ZenModeTile;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenAvailableChanged(Z)V
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    .line 118
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ZenModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/ZenModeTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/ZenModeTile;->access$100(Lcom/android/systemui/qs/tiles/ZenModeTile;Ljava/lang/Object;)V

    return-void
.end method
