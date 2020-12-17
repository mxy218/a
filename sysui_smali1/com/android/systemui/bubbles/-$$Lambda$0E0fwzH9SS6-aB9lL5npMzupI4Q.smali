.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleData$TimeSource;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$0E0fwzH9SS6-aB9lL5npMzupI4Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentTimeMillis()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
