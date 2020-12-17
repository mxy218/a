.class Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "QSTileAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/QSTileAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColorfulImageView"
.end annotation


# instance fields
.field isColorful:Z

.field final synthetic this$0:Lcom/flyme/systemui/qs/QSTileAnimationView;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/qs/QSTileAnimationView;Landroid/content/Context;)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->this$0:Lcom/flyme/systemui/qs/QSTileAnimationView;

    .line 194
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method isColorful()Z
    .registers 1

    .line 200
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->isColorful:Z

    return p0
.end method

.method setColorful(Z)V
    .registers 2

    .line 204
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/QSTileAnimationView$ColorfulImageView;->isColorful:Z

    return-void
.end method
