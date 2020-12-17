.class public Lcom/flyme/systemuitools/aod/view/AODMusicView;
.super Landroid/widget/LinearLayout;
.source "AODMusicView.java"

# interfaces
.implements Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;


# instance fields
.field private mExtraTime:Landroid/widget/TextView;

.field private mMusicAlbum:Landroid/widget/TextView;

.field private mMusicArtwork:Landroid/widget/ImageView;

.field private mMusicTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODMusicView;->initView(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter;->registerCallback(Lcom/flyme/systemuitools/aod/presenter/DateTimePresenter$IDateTimeCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/view/AODMusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 4

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    sget v0, Lcom/android/systemui/R$layout;->aod_music_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    sget v0, Lcom/android/systemui/R$id;->music_artwork:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mMusicArtwork:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/android/systemui/R$id;->music_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mMusicTitle:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/systemui/R$id;->music_album:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mMusicAlbum:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/android/systemui/R$id;->extra_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mExtraTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public updateAmPm(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateDate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public updateMusicInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mMusicTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 61
    :cond_21
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mMusicAlbum:Landroid/widget/TextView;

    if-eqz p1, :cond_28

    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public updateTime(Ljava/lang/CharSequence;)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/AODMusicView;->mExtraTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
