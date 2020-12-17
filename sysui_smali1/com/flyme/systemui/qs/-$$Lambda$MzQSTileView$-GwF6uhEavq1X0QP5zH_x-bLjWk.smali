.class public final synthetic Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$-GwF6uhEavq1X0QP5zH_x-bLjWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$-GwF6uhEavq1X0QP5zH_x-bLjWk;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/flyme/systemui/qs/-$$Lambda$MzQSTileView$-GwF6uhEavq1X0QP5zH_x-bLjWk;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileView;->lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
