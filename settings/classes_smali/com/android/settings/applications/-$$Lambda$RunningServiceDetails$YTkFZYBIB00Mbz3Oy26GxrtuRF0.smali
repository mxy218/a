.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$YTkFZYBIB00Mbz3Oy26GxrtuRF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$YTkFZYBIB00Mbz3Oy26GxrtuRF0;->f$0:Lcom/android/settings/applications/RunningServiceDetails;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$YTkFZYBIB00Mbz3Oy26GxrtuRF0;->f$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->lambda$finish$0$RunningServiceDetails()V

    return-void
.end method
