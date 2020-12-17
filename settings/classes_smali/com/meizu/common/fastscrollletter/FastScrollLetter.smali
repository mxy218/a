.class public Lcom/meizu/common/fastscrollletter/FastScrollLetter;
.super Landroid/widget/RelativeLayout;
.source "FastScrollLetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/fastscrollletter/FastScrollLetter$FastScrollLetterCallBack;
    }
.end annotation


# instance fields
.field private adapter:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;

.field private callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetter$FastScrollLetterCallBack;

.field private context:Landroid/content/Context;

.field private listView:Lcom/meizu/common/fastscrollletter/IFastScrollLetterListView;

.field private navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

.field private navigationLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needSetRightPadding:Z

.field private overlayLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->initializeNavigationView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->context:Landroid/content/Context;

    .line 56
    invoke-direct {p0, p2}, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->initializeNavigationView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->context:Landroid/content/Context;

    .line 63
    invoke-direct {p0, p2}, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->initializeNavigationView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeNavigationView(Landroid/util/AttributeSet;)V
    .registers 4

    .line 67
    new-instance v0, Lcom/meizu/common/fastscrollletter/NavigationLayout;

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    .line 68
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {v0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->initializeFromAttrs(Landroid/util/AttributeSet;)V

    .line 71
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xb

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, -0x1

    .line 73
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, -0x2

    .line 74
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 75
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getListView()Lcom/meizu/common/fastscrollletter/IFastScrollLetterListView;
    .registers 1

    .line 351
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->listView:Lcom/meizu/common/fastscrollletter/IFastScrollLetterListView;

    return-object p0
.end method

.method public getNavigationLayout()Lcom/meizu/common/fastscrollletter/NavigationLayout;
    .registers 1

    .line 360
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    return-object p0
.end method

.method public setAutoHideLetter(Z)V
    .registers 2

    .line 336
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setAutoHideLetter(Z)V

    return-void
.end method

.method public setCallBack(Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;)V
    .registers 2

    .line 383
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->adapter:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setCallBack(Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;)V

    return-void
.end method

.method public setHideBottomPassCount(I)V
    .registers 2

    .line 328
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setHideBottomPassCount(I)V

    return-void
.end method

.method public setHideNavigationBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public varargs setHideNavigationLetter([Ljava/lang/String;)V
    .registers 2

    .line 306
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setHideNavigationLetter([Ljava/lang/String;)V

    return-void
.end method

.method public setHideTopPassCount(I)V
    .registers 2

    .line 324
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setHideTopPassCount(I)V

    return-void
.end method

.method public setIntervalHide(I)V
    .registers 2

    .line 332
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setIntervalHide(I)V

    return-void
.end method

.method public setListView(Lcom/meizu/common/fastscrollletter/IFastScrollLetterListView;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->listView:Lcom/meizu/common/fastscrollletter/IFastScrollLetterListView;

    return-void
.end method

.method public setNavigationLetters(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLetters:Ljava/util/ArrayList;

    .line 320
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setNavigationLetters(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setNeedSetNormativeRightPaddingForItem(Z)V
    .registers 2

    .line 340
    iput-boolean p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->needSetRightPadding:Z

    .line 341
    iget-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->adapter:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;

    if-eqz p1, :cond_b

    .line 342
    iget-boolean p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->needSetRightPadding:Z

    invoke-virtual {p1, p0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setNeedSetNormativeRightPaddingForItem(Z)V

    :cond_b
    return-void
.end method

.method public setOffsetCallBack(Lcom/meizu/common/fastscrollletter/FastScrollLetter$FastScrollLetterCallBack;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetter$FastScrollLetterCallBack;

    return-void
.end method

.method public setOverlayLetters(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 314
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->overlayLetters:Ljava/util/ArrayList;

    .line 315
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {p0, p1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->setOverlayLetters(Ljava/util/ArrayList;)V

    return-void
.end method
