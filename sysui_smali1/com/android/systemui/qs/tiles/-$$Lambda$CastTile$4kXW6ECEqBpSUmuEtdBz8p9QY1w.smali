.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$4kXW6ECEqBpSUmuEtdBz8p9QY1w;->f$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$showDetail$1$CastTile(Landroid/view/View;)V

    return-void
.end method
