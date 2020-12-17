.class Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;
.super Ljava/lang/Object;
.source "PowerSaveTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/PowerSaveTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerSaveModeChanged(I)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/PowerSaveTile$1;->this$0:Lcom/flyme/systemui/qs/tiles/PowerSaveTile;

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->access$000(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/tiles/PowerSaveTile;->access$100(Lcom/flyme/systemui/qs/tiles/PowerSaveTile;Ljava/lang/Object;)V

    return-void
.end method
