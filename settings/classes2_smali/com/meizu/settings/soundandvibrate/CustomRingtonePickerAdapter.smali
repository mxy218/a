.class public Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.source "CustomRingtonePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter<",
        "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
        ">;"
    }
.end annotation


# instance fields
.field private mRingtoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedUri:Landroid/net/Uri;

.field private selectColor:I

.field private unSelectColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->selectColor:I

    .line 27
    iput v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->unSelectColor:I

    .line 31
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->showSectionHeaders(Z)V

    .line 33
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 34
    iput-object p2, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->mRingtoneList:Ljava/util/List;

    return-void
.end method

.method private isSelectedUri(Landroid/net/Uri;)Z
    .registers 5

    .line 62
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->mSelectedUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;II)V
    .registers 8

    const p2, 0x7f0a072d

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 53
    iget-object p3, p5, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->info:Landroid/media/MzRingtoneManager$RingtoneInfo;

    iget-object p3, p3, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p3, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->mSelectedUri:Landroid/net/Uri;

    if-eqz p3, :cond_20

    iget-object p3, p5, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;->info:Landroid/media/MzRingtoneManager$RingtoneInfo;

    iget-object p3, p3, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    .line 55
    invoke-direct {p0, p3}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->isSelectedUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 57
    :goto_21
    invoke-virtual {p2, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 58
    invoke-virtual {p1, p5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 22
    check-cast p5, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;II)V

    return-void
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 80
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0179

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0179

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newView(Landroid/content/Context;IILcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0153

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p0, p1, p7, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0d02d4

    const/4 p3, 0x1

    .line 44
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 22
    check-cast p4, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->newView(Landroid/content/Context;IILcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setSelectedItemUriString(Landroid/net/Uri;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePickerAdapter;->mSelectedUri:Landroid/net/Uri;

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method
