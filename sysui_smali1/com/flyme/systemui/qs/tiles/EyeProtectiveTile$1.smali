.class Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;
.super Ljava/lang/Object;
.source "EyeProtectiveTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEyeProtectiveChanged()V
    .registers 1

    .line 117
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/EyeProtectiveTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
