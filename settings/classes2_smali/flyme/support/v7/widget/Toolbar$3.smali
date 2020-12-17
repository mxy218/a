.class Lflyme/support/v7/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/Toolbar;->ensureNavButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/Toolbar;)V
    .registers 2

    .line 1136
    iput-object p1, p0, Lflyme/support/v7/widget/Toolbar$3;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p6

    check-cast p6, Landroid/view/View;

    .line 1140
    iget-object p0, p0, Lflyme/support/v7/widget/Toolbar$3;->this$0:Lflyme/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p7, 0x42600000  # 56.0f

    mul-float/2addr p0, p7

    float-to-int p0, p0

    sub-int p7, p4, p2

    if-ge p7, p0, :cond_2c

    sub-int/2addr p0, p7

    .line 1142
    div-int/lit8 p0, p0, 0x2

    .line 1143
    new-instance p7, Landroid/graphics/Rect;

    sub-int/2addr p2, p0

    add-int/2addr p4, p0

    invoke-direct {p7, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1144
    new-instance p0, Landroid/view/TouchDelegate;

    invoke-direct {p0, p7, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p6, p0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2c
    return-void
.end method
