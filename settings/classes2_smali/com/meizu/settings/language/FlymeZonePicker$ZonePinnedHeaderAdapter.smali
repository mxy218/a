.class public Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;
.super Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;
.source "FlymeZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZonePinnedHeaderAdapter"
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
.field final synthetic this$0:Lcom/meizu/settings/language/FlymeZonePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/language/FlymeZonePicker;Landroid/content/Context;Ljava/util/List;)V
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

    .line 116
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    .line 117
    invoke-direct {p0, p2, p3}, Lcom/meizu/settings/widget/FastScrollLetterPinnedHeaderIndexerArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 120
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->showSectionHeaders(Z)V

    .line 122
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isChineseOrEnglishLanguage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setSectionHeaderDisplayEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 112
    check-cast p5, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/util/HashMap;II)V

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

    .line 141
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;->this$0:Lcom/meizu/settings/language/FlymeZonePicker;

    const-string p2, "alphabet"

    .line 142
    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    .line 141
    invoke-static {p0, p2}, Lcom/meizu/settings/language/FlymeZonePicker;->access$000(Lcom/meizu/settings/language/FlymeZonePicker;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const p0, 0x1020014

    .line 146
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p2, 0x1020015

    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p6, 0x7f0a0646

    .line 151
    invoke-virtual {p1, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    const-string p6, "name"

    .line 152
    invoke-virtual {p5, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p0, "gmt"

    .line 154
    invoke-virtual {p5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-static {}, Lcom/meizu/settings/language/FlymeZonePicker;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "id"

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p6, "ZonePicker"

    .line 156
    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lcom/meizu/settings/language/FlymeZonePicker;->access$100()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_89

    .line 159
    invoke-static {}, Lcom/meizu/settings/language/FlymeZonePicker;->access$100()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    .line 160
    invoke-virtual {p1, p3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_8c

    .line 162
    :cond_89
    invoke-virtual {p1, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_8c
    return-void
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 112
    check-cast p4, Ljava/util/HashMap;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/language/FlymeZonePicker$ZonePinnedHeaderAdapter;->newView(Landroid/content/Context;IILjava/util/HashMap;IILandroid/view/ViewGroup;)Landroid/view/View;

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

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0153

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p1, p7, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0d0310

    const/4 p3, 0x1

    .line 132
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-object p1
.end method
