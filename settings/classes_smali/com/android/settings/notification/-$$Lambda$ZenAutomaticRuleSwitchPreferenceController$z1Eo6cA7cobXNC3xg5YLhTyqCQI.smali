.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenAutomaticRuleSwitchPreferenceController$z1Eo6cA7cobXNC3xg5YLhTyqCQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$$Lambda$ZenAutomaticRuleSwitchPreferenceController$z1Eo6cA7cobXNC3xg5YLhTyqCQI;->f$0:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/settings/notification/-$$Lambda$ZenAutomaticRuleSwitchPreferenceController$z1Eo6cA7cobXNC3xg5YLhTyqCQI;->f$0:Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->lambda$displayPreference$0$ZenAutomaticRuleSwitchPreferenceController(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
