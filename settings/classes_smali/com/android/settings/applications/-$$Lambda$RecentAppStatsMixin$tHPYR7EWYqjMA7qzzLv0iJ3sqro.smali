.class public final synthetic Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$tHPYR7EWYqjMA7qzzLv0iJ3sqro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$tHPYR7EWYqjMA7qzzLv0iJ3sqro;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/settings/applications/-$$Lambda$RecentAppStatsMixin$tHPYR7EWYqjMA7qzzLv0iJ3sqro;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    invoke-virtual {p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->lambda$onStart$1$RecentAppStatsMixin()V

    return-void
.end method
