.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$3$jtlbOv9xqjXTNoW_lFuZ_dYzc1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$3$jtlbOv9xqjXTNoW_lFuZ_dYzc1k;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$3$jtlbOv9xqjXTNoW_lFuZ_dYzc1k;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$3;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$3;->lambda$onDataSaverChanged$0$AutoTileManager$3()V

    return-void
.end method
