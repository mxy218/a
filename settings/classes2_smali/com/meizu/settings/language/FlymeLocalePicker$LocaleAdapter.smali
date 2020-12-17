.class Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "FlymeLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeLocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleAdapter"
.end annotation


# instance fields
.field layoutInflater:Landroid/view/LayoutInflater;

.field localeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/language/FlymeLocalePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/language/FlymeLocalePicker;Ljava/util/List;Landroid/view/LayoutInflater;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;",
            ">;",
            "Landroid/view/LayoutInflater;",
            ")V"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->localeInfos:Ljava/util/List;

    .line 226
    iput-object p3, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->localeInfos:Ljava/util/List;

    if-eqz p0, :cond_9

    .line 232
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->localeInfos:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 240
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->localeInfos:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_37

    .line 254
    new-instance p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;

    invoke-direct {p2}, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;-><init>()V

    .line 255
    iget-object p3, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0310

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x1020014

    .line 257
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text1:Landroid/widget/TextView;

    const v0, 0x1020015

    .line 258
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text2:Landroid/widget/TextView;

    const v0, 0x7f0a0646

    .line 259
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->selectButton:Landroid/widget/CheckedTextView;

    .line 260
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_40

    .line 262
    :cond_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 264
    :goto_40
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->localeInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-static {v1}, Lcom/meizu/settings/language/FlymeLocalePicker;->access$000(Lcom/meizu/settings/language/FlymeLocalePicker;)Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->getSpecialName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 268
    iget-object v1, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a3

    .line 271
    :cond_8f
    iget-object p1, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object p1, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-static {v1}, Lcom/meizu/settings/language/FlymeLocalePicker;->access$000(Lcom/meizu/settings/language/FlymeLocalePicker;)Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/settings/language/FlymeLocaleDisplayName;->getEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :goto_a3
    iget-object p1, p2, Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;->selectButton:Landroid/widget/CheckedTextView;

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;->this$0:Lcom/meizu/settings/language/FlymeLocalePicker;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->access$100(Lcom/meizu/settings/language/FlymeLocalePicker;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p3
.end method
