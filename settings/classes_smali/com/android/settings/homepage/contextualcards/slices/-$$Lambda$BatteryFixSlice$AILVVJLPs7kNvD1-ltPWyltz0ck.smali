.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$AILVVJLPs7kNvD1-ltPWyltz0ck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$AILVVJLPs7kNvD1-ltPWyltz0ck;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BatteryFixSlice$AILVVJLPs7kNvD1-ltPWyltz0ck;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BatteryFixSlice;->lambda$updateBatteryTipAvailabilityCache$0(Landroid/content/Context;)V

    return-void
.end method
