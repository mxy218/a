.class public Lcom/meizu/common/app/SlideNotice;
.super Ljava/lang/Object;
.source "SlideNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNotice$NoticeHandler;,
        Lcom/meizu/common/app/SlideNotice$SlideContainerView;,
        Lcom/meizu/common/app/SlideNotice$SlideViewController;,
        Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;
    }
.end annotation


# static fields
.field private static final HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 82
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const/high16 v1, 0x3f800000  # 1.0f

    const v2, 0x3e4ccccd  # 0.2f

    const v3, 0x3eeb851f  # 0.46f

    const v4, 0x3dcccccd  # 0.1f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->SHOW_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v2, 0x3ea8f5c3  # 0.33f

    const v3, 0x3d79db23  # 0.061f

    const v4, 0x3e75c28f  # 0.24f

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    sput-object v0, Lcom/meizu/common/app/SlideNotice;->HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    .line 133
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    .line 134
    new-instance p1, Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p1, p0, p0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;-><init>(Lcom/meizu/common/app/SlideNotice;Lcom/meizu/common/app/SlideNotice;)V

    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    return-void

    .line 131
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context can not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 141
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static makeNotice(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/meizu/common/app/SlideNotice;
    .registers 4

    .line 493
    new-instance p2, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {p2, p0, p1, p3}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-object p2
.end method


# virtual methods
.method public setActionBarToTop(Z)V
    .registers 2

    .line 252
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setBelowDefaultActionBar(Z)V

    return-void
.end method

.method public setBeginColor(I)V
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    return-void
.end method

.method public setEndColor(I)V
    .registers 2

    .line 168
    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice;->setNoticeBackgroundColor(I)V

    return-void
.end method

.method public setNoticeBackgroundColor(I)V
    .registers 2

    .line 177
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice;->mSlideViewController:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-virtual {p0, p1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->setNoticeBgColor(I)V

    return-void
.end method

.method public show()V
    .registers 1

    .line 352
    iget-object p0, p0, Lcom/meizu/common/app/SlideNotice;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_7
    return-void
.end method
