.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/NavBarTuner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroidx/preference/ListPreference;

.field private final synthetic f$4:Landroidx/preference/ListPreference;

.field private final synthetic f$5:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$3:Landroidx/preference/ListPreference;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$4:Landroidx/preference/ListPreference;

    iput-object p6, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$5:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$0:Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$3:Landroidx/preference/ListPreference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$4:Landroidx/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/tuner/-$$Lambda$NavBarTuner$sQQgaEvmFdhni6jwm3oIAJf94Eo;->f$5:Landroidx/preference/Preference;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$bindButton$4$NavBarTuner(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;Landroidx/preference/Preference;)V

    return-void
.end method
