.class public final synthetic Lcom/meizu/settings/soundandvibrate/-$$Lambda$WorkSoundPreferenceController$jeR5R8UfnZbh_WRPsIUbWfm8bsU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/-$$Lambda$WorkSoundPreferenceController$jeR5R8UfnZbh_WRPsIUbWfm8bsU;->f$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/-$$Lambda$WorkSoundPreferenceController$jeR5R8UfnZbh_WRPsIUbWfm8bsU;->f$0:Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/soundandvibrate/WorkSoundPreferenceController;->lambda$updateWorkPreferences$0$WorkSoundPreferenceController(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
