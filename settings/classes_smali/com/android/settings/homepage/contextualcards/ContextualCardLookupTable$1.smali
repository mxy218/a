.class Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;
.super Ljava/util/TreeSet;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const/4 v3, 0x3

    const v4, 0x7f0d007c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    const v4, 0x7f0d007b

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;

    const/4 v3, 0x2

    const v4, 0x7f0d011c

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const/4 v3, 0x1

    const v4, 0x7f0d0089

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d008a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    const v4, 0x7f0d008b

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;

    const/4 v3, 0x5

    const v4, 0x7f0d007a

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    const-class v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const-class v2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;

    const/4 v3, 0x4

    const v4, 0x7f0d007d

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;-><init>(IILjava/lang/Class;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
