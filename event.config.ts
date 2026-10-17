import raw from './event-data.json'

export type Status = 'confirmed' | 'provisional' | 'tbd'

export interface Challenge {
  name: string
  kind: string
  summary: string
  requirements: string[]
  prize: string
}

export interface EventData {
  event: {
    officialName: string
    campaignName: string
    date: string
    publicTime: string
    submissionDeadline: string
    venue: string
    address: string
    eventUrl: string
    challengeUrl: string
    codeOfConductUrl: string
    handbookUrl: string
  }
  hosts: Array<{ name: string; role: string; community: string; photo: string; url: string }>
  workshops: Array<{ time: string; title: string; description: string; presenter: string }>
  challenges: Challenge[]
  contacts: Record<string, string>
}

export const eventData = raw as EventData
