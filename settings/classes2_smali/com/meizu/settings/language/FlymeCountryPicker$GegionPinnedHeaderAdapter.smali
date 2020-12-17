.class public Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;
.super Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;
.source "FlymeCountryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GegionPinnedHeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeCountryPicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/language/FlymeCountryPicker;Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 103
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->showSectionHeaders(Z)V

    .line 105
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setSectionHeaderDisplayEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 95
    check-cast p5, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/util/HashMap;II)V

    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILjava/util/HashMap;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    const p2, 0x1020014

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0a0646

    .line 126
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    const-string p3, "name"

    .line 127
    invoke-virtual {p5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    invoke-static {p2}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$000(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_40

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;->this$0:Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 133
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeCountryPicker;->access$000(Lcom/meizu/settings/language/FlymeCountryPicker;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "id"

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    .line 134
    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_44

    :cond_40
    const/4 p0, 0x0

    .line 136
    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_44
    return-void
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 95
    check-cast p4, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/language/FlymeCountryPicker$GegionPinnedHeaderAdapter;->newView(Landroid/content/Context;IILjava/util/HashMap;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newView(Landroid/content/Context;IILjava/util/HashMap;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0153

    const/4 p2, 0x0

    .line 113
    invoke-virtual {p0, p1, p7, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0d01ca

    const/4 p3, 0x1

    .line 115
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p1
.end method
