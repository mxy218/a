.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$_FpGozZEG9RoHf7nrcZOHDo67cg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

.field private final synthetic f$1:Lcom/android/settings/accounts/AccountFeatureProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$_FpGozZEG9RoHf7nrcZOHDo67cg;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$_FpGozZEG9RoHf7nrcZOHDo67cg;->f$1:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$_FpGozZEG9RoHf7nrcZOHDo67cg;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$_FpGozZEG9RoHf7nrcZOHDo67cg;->f$1:Lcom/android/settings/accounts/AccountFeatureProvider;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->lambda$displayPreference$0$BrandedAccountPreferenceController(Lcom/android/settings/accounts/AccountFeatureProvider;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
