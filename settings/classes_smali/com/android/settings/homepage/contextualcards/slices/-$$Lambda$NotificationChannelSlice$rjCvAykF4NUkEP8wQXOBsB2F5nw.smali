.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

.field private final synthetic f$1:Lcom/android/settings/notification/NotificationBackend$AppRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;->f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;->f$1:Lcom/android/settings/notification/NotificationBackend$AppRow;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;->f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$rjCvAykF4NUkEP8wQXOBsB2F5nw;->f$1:Lcom/android/settings/notification/NotificationBackend$AppRow;

    check-cast p1, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->lambda$getDisplayableChannels$2$NotificationChannelSlice(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannelGroup;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
