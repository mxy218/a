.class public Lcom/meizu/settings/deviceinfo/DensityPreference;
.super Landroidx/preference/Preference;
.source "DensityPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mNameEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/DensityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    .line 59
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/DensityPreference;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/widget/EditText;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/DensityPreference;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getCurrentSwDp()I
    .registers 3

    .line 70
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 72
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 73
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private showDialog()V
    .registers 8

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    .line 88
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00dc

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0736

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v2, v3}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    const v2, 0x7f0a04c3

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    .line 92
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/DensityPreference;->getCurrentSwDp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 94
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 95
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1206c0

    .line 98
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x104000a

    .line 99
    new-instance v6, Lcom/meizu/settings/deviceinfo/DensityPreference$1;

    invoke-direct {v6, p0}, Lcom/meizu/settings/deviceinfo/DensityPreference$1;-><init>(Lcom/meizu/settings/deviceinfo/DensityPreference;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    .line 119
    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/meizu/settings/deviceinfo/DensityPreference$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/DensityPreference$2;-><init>(Lcom/meizu/settings/deviceinfo/DensityPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 132
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/DensityPreference;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_ad

    goto :goto_ae

    :cond_ad
    move v3, v4

    :goto_ae
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .registers 5

    .line 140
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 141
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/DensityPreference;->getCurrentSwDp()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f1206b3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    .line 79
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/DensityPreference;->showDialog()V

    const/4 p0, 0x0

    return p0
.end method
