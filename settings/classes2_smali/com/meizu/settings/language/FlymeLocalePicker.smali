.class public Lcom/meizu/settings/language/FlymeLocalePicker;
.super Lcom/meizu/settings/SettingsListFragment;
.source "FlymeLocalePicker.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/language/FlymeLocalePicker$ViewHolder;,
        Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;,
        Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;
    }
.end annotation


# static fields
.field private static final mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentLocaleCode:Ljava/lang/String;

.field private mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mLocaleDisplay:Lcom/meizu/settings/language/FlymeLocaleDisplayName;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    .line 56
    sget-object v0, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/SettingsListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/language/FlymeLocalePicker;)Lcom/meizu/settings/language/FlymeLocaleDisplayName;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mLocaleDisplay:Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/language/FlymeLocalePicker;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mCurrentLocaleCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/language/FlymeLocalePicker;)Ljava/util/Locale;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 4

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f12092f

    .line 386
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 387
    new-instance p0, Lcom/meizu/settings/language/FlymeLocalePicker$3;

    invoke-direct {p0, p2}, Lcom/meizu/settings/language/FlymeLocalePicker$3;-><init>(Ljava/lang/Runnable;)V

    const p1, 0x104000a

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    const/4 p1, 0x0

    .line 393
    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v0, "ka"

    .line 128
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "ka-GE"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 129
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_31
    if-nez p1, :cond_3d

    const-string p1, "ar-XB"

    .line 134
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "en-XA"

    .line 135
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    :cond_3d
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const p1, 0x7f03010e

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f03010f

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v3

    if-nez v3, :cond_76

    .line 144
    sget-object v3, Lcom/meizu/settings/language/FlymeLocalePicker;->mFILTER_LOCALE_INLAND:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto :goto_5b

    :cond_76
    const/16 v3, 0x5f

    const/16 v4, 0x2d

    .line 148
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 149
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "und"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 150
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a5

    goto :goto_5b

    .line 154
    :cond_a5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 158
    new-instance v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/settings/language/FlymeLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 164
    :cond_bc
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    .line 165
    iget-object v4, v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    iget-object v4, v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 166
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_104

    .line 176
    iget-object v4, v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v4, p1, p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/settings/language/FlymeLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 182
    new-instance v3, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    .line 183
    invoke-static {v2, p1, p0}, Lcom/meizu/settings/language/FlymeLocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v4}, Lcom/meizu/settings/language/FlymeLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 185
    :cond_104
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/settings/language/FlymeLocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v4, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    invoke-direct {v4, v3, v2}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 194
    :cond_116
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 208
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 211
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 212
    aget-object p0, p2, v1

    return-object p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 216
    :cond_16
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 203
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .registers 4

    .line 360
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 362
    :try_start_b
    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 364
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_13
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .line 302
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 303
    new-instance p1, Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f160085

    invoke-direct {p1, v0, v1}, Lcom/meizu/settings/language/FlymeLocaleDisplayName;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mLocaleDisplay:Lcom/meizu/settings/language/FlymeLocaleDisplayName;

    .line 304
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 305
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    .line 307
    :cond_2f
    new-instance v0, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/meizu/settings/language/FlymeLocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;-><init>(Lcom/meizu/settings/language/FlymeLocalePicker;Ljava/util/List;Landroid/view/LayoutInflater;)V

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 292
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_18

    const-string v0, "locale"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 294
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 296
    :cond_18
    invoke-virtual {p0}, Landroid/app/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mCurrentLocaleCode:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 4

    .line 370
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/language/FlymeLocalePicker$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/language/FlymeLocalePicker$2;-><init>(Lcom/meizu/settings/language/FlymeLocalePicker;I)V

    const p0, 0x7f120932

    invoke-static {v0, p0, v1}, Lcom/meizu/settings/language/FlymeLocalePicker;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0d00fe

    const/4 p3, 0x0

    .line 116
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const p1, 0x7f0a01a1

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    .line 342
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;

    iget-object p1, p1, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mCurrentLocaleCode:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/language/FlymeLocalePicker$LocaleAdapter;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 346
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/meizu/settings/language/FlymeLocalePicker$1;

    invoke-direct {p3, p0, p1}, Lcom/meizu/settings/language/FlymeLocalePicker$1;-><init>(Lcom/meizu/settings/language/FlymeLocalePicker;Ljava/util/Locale;)V

    const-wide/16 p0, 0x118

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 320
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 321
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 323
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f120ff1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 328
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz p0, :cond_10

    .line 331
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "locale"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 313
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 314
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 315
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected removeDialog(I)V
    .registers 3

    .line 410
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 411
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_f
    const/4 p1, 0x0

    .line 413
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLocalePicker;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method
