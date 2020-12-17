.class Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V
    .registers 5

    .line 109
    invoke-virtual {p3}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 110
    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    .line 111
    iput-object p3, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 116
    iget-object p2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f1600ea

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0753

    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a06f5

    .line 122
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->access$000(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a05b7

    .line 125
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 126
    iget-object p0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;->mSelector:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_4d

    const/4 p0, 0x1

    .line 127
    invoke-virtual {p3, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4d
    return-object p2
.end method
