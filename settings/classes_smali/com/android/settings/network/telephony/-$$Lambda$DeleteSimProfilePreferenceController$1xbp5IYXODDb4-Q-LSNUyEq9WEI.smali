.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;->f$0:Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;->f$0:Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->lambda$displayPreference$0$DeleteSimProfilePreferenceController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
