.class public final synthetic Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/development/MemoryUsagePreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$0:Lcom/android/settings/development/MemoryUsagePreferenceController;

    iget-object v1, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/development/-$$Lambda$MemoryUsagePreferenceController$jVfwyLcntt7OQNk4ZzyeXShgglc;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;->lambda$updateState$0$MemoryUsagePreferenceController(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
