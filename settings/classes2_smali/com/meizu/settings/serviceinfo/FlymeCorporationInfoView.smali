.class public Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;
.super Landroid/widget/RelativeLayout;
.source "FlymeCorporationInfoView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCorporationInfoGroup:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getUrlStr(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .registers 4

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<a href=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</a>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mContext:Landroid/content/Context;

    .line 49
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d008f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    .line 51
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    const v0, 0x7f0a01b9

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mCorporationInfoGroup:Landroid/widget/LinearLayout;

    return-void
.end method

.method private newCorporationItemView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 7

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "titleStr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CorporationInfoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0753

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07b4

    .line 61
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/LongClickCopyTextView;

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->getUrlStr(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 64
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    const p0, 0x7f060210

    .line 65
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_65

    :cond_5d
    const/16 p0, 0xf

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_65
    return-object v0
.end method


# virtual methods
.method public setServiceInfo(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_30

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mCorporationInfoGroup:Landroid/widget/LinearLayout;

    if-nez v0, :cond_7

    goto :goto_30

    .line 82
    :cond_7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    .line 84
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->mCorporationInfoGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->newCorporationItemView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_e

    :cond_30
    :goto_30
    return-void
.end method
